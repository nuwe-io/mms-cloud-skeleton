import HeaderComponent from "@/ui/Header/HeaderComponent.vue";
import { render } from "@testing-library/vue";

it("should render Header Component", function () {
  const { getByText } = render(HeaderComponent);

  getByText("Welcome to the Nuwe's vite vue skeleton");
});
